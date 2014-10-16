function varargout = resultatunid(varargin)
% RESULTATUNID M-file for resultatunid.fig
%      RESULTATUNID, by itself, creates a new RESULTATUNID or raises the existing
%      singleton*.
%
%      H = RESULTATUNID returns the handle to a new RESULTATUNID or the handle to
%      the existing singleton*.
%
%      RESULTATUNID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTATUNID.M with the given input arguments.
%
%      RESULTATUNID('Property','Value',...) creates a new RESULTATUNID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultatunid_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultatunid_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultatunid

% Last Modified by GUIDE v2.5 08-Aug-2006 14:38:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultatunid_OpeningFcn, ...
                   'gui_OutputFcn',  @resultatunid_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before resultatunid is made visible.
function resultatunid_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultatunid (see VARARGIN)

% Choose default command line output for resultatunid
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultatunid wait for user response (see UIRESUME)
% uiwait(handles.figure1);
load resultat;
set(handles.ptmin,'string',xmin);
set(handles.faupt,'string',FaupointXmin);
set(handles.niteration,'string',K);

load resultatunidim;
set(handles.xmatlab,'string',xmatlab);

set(handles.fmatlab,'string',fmatlab);
% --- Outputs from this function are returned to the command line.
function varargout = resultatunid_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function ptmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ptmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ptmin_Callback(hObject, eventdata, handles)
% hObject    handle to ptmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ptmin as text
%        str2double(get(hObject,'String')) returns contents of ptmin as a double
load resultat;
set(handles.ptmin,'string',xmin);


% --- Executes during object creation, after setting all properties.
function faupt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to faupt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function faupt_Callback(hObject, eventdata, handles)
% hObject    handle to faupt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of faupt as text
%        str2double(get(hObject,'String')) returns contents of faupt as a double


% --- Executes during object creation, after setting all properties.
function niteration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to niteration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function niteration_Callback(hObject, eventdata, handles)
% hObject    handle to niteration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of niteration as text
%        str2double(get(hObject,'String')) returns contents of niteration as a double


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
clear all;
unidim;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close (resultatunid);
close (graphe);
unidim;
% --- Executes during object creation, after setting all properties.
function fmatlab_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fmatlab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function fmatlab_Callback(hObject, eventdata, handles)
% hObject    handle to fmatlab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fmatlab as text
%        str2double(get(hObject,'String')) returns contents of fmatlab as a double


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close (resultatunid);

% --- Executes during object creation, after setting all properties.
function xmatlab_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xmatlab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function xmatlab_Callback(hObject, eventdata, handles)
% hObject    handle to xmatlab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xmatlab as text
%        str2double(get(hObject,'String')) returns contents of xmatlab as a double


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
dfp;

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
clear all;
unidim;

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close (resultatunid);


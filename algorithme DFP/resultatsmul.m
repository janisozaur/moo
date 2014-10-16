function varargout = resultatsmul(varargin)
% RESULTATSMUL M-file for resultatsmul.fig
%      RESULTATSMUL, by itself, creates a new RESULTATSMUL or raises the existing
%      singleton*.
%
%      H = RESULTATSMUL returns the handle to a new RESULTATSMUL or the handle to
%      the existing singleton*.
%
%      RESULTATSMUL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTATSMUL.M with the given input arguments.
%
%      RESULTATSMUL('Property','Value',...) creates a new RESULTATSMUL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultatsmul_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultatsmul_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultatsmul

% Last Modified by GUIDE v2.5 08-Aug-2006 14:36:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultatsmul_OpeningFcn, ...
                   'gui_OutputFcn',  @resultatsmul_OutputFcn, ...
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


% --- Executes just before resultatsmul is made visible.
function resultatsmul_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultatsmul (see VARARGIN)

% Choose default command line output for resultatsmul
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultatsmul wait for user response (see UIRESUME)
% uiwait(handles.figure1);
load resultatmulti ;
if K>100
     errordlg('Algorithme divergeant!!!!!','Error');
 end

set(handles.pointmin,'string',Xmin);
set(handles. fptmin,'string',FaupointXmin);
set(handles.nbiter,'string',K);


load resultatmultimatlab ;

set(handles.xmatlab,'string',Xmatlab);
set(handles.fmatlab,'string',FaupointXminmatlab);


% --- Outputs from this function are returned to the command line.
function varargout = resultatsmul_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function pointmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pointmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function pointmin_Callback(hObject, eventdata, handles)
% hObject    handle to pointmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pointmin as text
%        str2double(get(hObject,'String')) returns contents of pointmin as a double


% --- Executes during object creation, after setting all properties.
function fptmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fptmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function fptmin_Callback(hObject, eventdata, handles)
% hObject    handle to fptmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fptmin as text
%        str2double(get(hObject,'String')) returns contents of fptmin as a double


% --- Executes during object creation, after setting all properties.
function nbiter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nbiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function nbiter_Callback(hObject, eventdata, handles)
% hObject    handle to nbiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nbiter as text
%        str2double(get(hObject,'String')) returns contents of nbiter as a double


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close (resultatsmul);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;;
dfp;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close (resultatsmul);
close (figure(1));
muldim;

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


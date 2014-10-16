function varargout = multidim(varargin)
% MULTIDIM M-file for multidim.fig
%      MULTIDIM, by itself, creates a new MULTIDIM or raises the existing
%      singleton*.
%
%      H = MULTIDIM returns the handle to a new MULTIDIM or the handle to
%      the existing singleton*.
%
%      MULTIDIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTIDIM.M with the given input arguments.
%
%      MULTIDIM('Property','Value',...) creates a new MULTIDIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multidim_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multidim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multidim

% Last Modified by GUIDE v2.5 16-Jun-2006 12:52:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multidim_OpeningFcn, ...
                   'gui_OutputFcn',  @multidim_OutputFcn, ...
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


% --- Executes just before multidim is made visible.
function multidim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multidim (see VARARGIN)

% Choose default command line output for multidim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multidim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multidim_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
choix=get(hObject,'Value');
save choix;


% --- Executes during object creation, after setting all properties.
function ro_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ro_Callback(hObject, eventdata, handles)
% hObject    handle to ro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ro as text
%        str2double(get(hObject,'String')) returns contents of ro as a double
ro= str2double(get(hObject, 'String'));
if isnan(ro)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.ro= ro;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function eps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function eps_Callback(hObject, eventdata, handles)
% hObject    handle to eps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eps as text
%        str2double(get(hObject,'String')) returns contents of eps as a double
epsilon = str2double(get(hObject, 'String'));
if isnan(epsilon)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.epsilon = epsilon;
setappdata(gcbf, 'metricdata', data);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = getappdata(gcbf, 'metricdata');

epsilon=data.epsilon
ro=data.ro
save epsilon;
save ro;

nvar=data.nvar
save nvar;
h=guidata(gcbo);
if nvar==2
  set(h.ptinitial3, 'Visible', 'off');
   set(h.ptinitial4, 'Visible', 'off');
    
end



initialize_gui(gcbf, handles);

function initialize_gui(fig_handle, handles)
data.x1 = 0;
data.x2 = 0;
data.x3 = 0;
data.x4 = 0;
setappdata(fig_handle, 'metricdata', data);
set(handles.ptinitial1, 'String', data.x1);
set(handles.ptinitial2, 'String', data.x2);
set(handles.ptinitial3, 'String', data.x3);
set(handles.ptinitial4, 'String', data.x4);















% --- Executes during object creation, after setting all properties.
function ptinitial1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ptinitial1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ptinitial1_Callback(hObject, eventdata, handles)
% hObject    handle to ptinitial1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ptinitial1 as text
%        str2double(get(hObject,'String')) returns contents of ptinitial1 as a double
x1 = str2double(get(hObject,'String'))

data = getappdata(gcbf, 'metricdata');
data.x1 = x1;
setappdata(gcbf, 'metricdata', data);


% --- Executes during object creation, after setting all properties.
function nvar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nvar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function nvar_Callback(hObject, eventdata, handles)
% hObject    handle to nvar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nvar as text
%        str2double(get(hObject,'String')) returns contents of nvar as a double

nvar = str2double(get(hObject, 'String'));
if isnan(nvar)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.nvar = nvar;
setappdata(gcbf, 'metricdata', data);


% --- Executes during object creation, after setting all properties.
function ptinitial2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ptinitial2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ptinitial2_Callback(hObject, eventdata, handles)
% hObject    handle to ptinitial2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ptinitial2 as text
%        str2double(get(hObject,'String')) returns contents of ptinitial2 as a double
x2 = str2double(get(hObject,'String'))

data = getappdata(gcbf, 'metricdata');
data.x2 = x2;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function ptinitial3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ptinitial3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ptinitial3_Callback(hObject, eventdata, handles)
% hObject    handle to ptinitial3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ptinitial3 as text
%        str2double(get(hObject,'String')) returns contents of ptinitial3 as a double
x3 = str2double(get(hObject,'String'))

data = getappdata(gcbf, 'metricdata');
data.x3 = x3;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function ptinitial4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ptinitial4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ptinitial4_Callback(hObject, eventdata, handles)
% hObject    handle to ptinitial4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ptinitial4 as text
%        str2double(get(hObject,'String')) returns contents of ptinitial4 as a double
x4 =str2double(get(hObject,'String'))

data = getappdata(gcbf, 'metricdata');
data.x4 = x4;
setappdata(gcbf, 'metricdata', data);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



load nvar;


h=guidata(gcbo);
data = getappdata(gcbf, 'metricdata');
x1=data.x1;
x2=data.x2;
x3=data.x3;
x4=data.x4;

if nvar==2
x0=[x1 x2]
end

if nvar==3
x0=[x1 x2 x3]
end

if nvar==4
x0=[x1 x2 x3 x4]
end

save x0;
algodfp;

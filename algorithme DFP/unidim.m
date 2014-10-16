function varargout = unidim(varargin)
% UNIDIM M-file for unidim.fig
%      UNIDIM, by itself, creates a new UNIDIM or raises the existing
%      singleton*.
%
%      H = UNIDIM returns the handle to a new UNIDIM or the handle to
%      the existing singleton*.
%
%      UNIDIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNIDIM.M with the given input arguments.
%
%      UNIDIM('Property','Value',...) creates a new UNIDIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before unidim_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to unidim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help unidim

% Last Modified by GUIDE v2.5 28-Jul-2006 11:21:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @unidim_OpeningFcn, ...
                   'gui_OutputFcn',  @unidim_OutputFcn, ...
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


% --- Executes just before unidim is made visible.
function unidim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to unidim (see VARARGIN)

% Choose default command line output for unidim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes unidim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = unidim_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function expression_CreateFcn(hObject, eventdata, handles)
% hObject    handle to expression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function expression_Callback(hObject, eventdata, handles)
% hObject    handle to expression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of expression as text
%        str2double(get(hObject,'String')) returns contents of expression as a double
global expression;
syms x;
expression=get(handles.expression,'string');
y=expression;
save y;




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

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%data = getappdata(gcbf, 'metricdata');





% --- Executes on button press in pl.
function pl_Callback(hObject, eventdata, handles)
% hObject    handle to pl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pl
vgraphe=get(hObject,'Value');
save vgraphe;


% --- Executes on button press in ra.
function ra_Callback(hObject, eventdata, handles)
% hObject    handle to ra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of ra
rchaut=get(hObject,'Value')
save rchaut;
h=guidata(gcbo);
if rchaut==1
   set(h.cp,'Enable','off'); 
    set(h.inta,'Enable','off'); 
    set(h.intb,'Enable','off'); 
    set(h.aa,'Enable','off'); 
    set(h.bb,'Enable','off');
end
if rchaut==0
   set(h.cp,'Enable','on'); 
   set(h.inta,'Enable','on'); 
    set(h.intb,'Enable','on'); 
    set(h.aa,'Enable','on'); 
    set(h.bb,'Enable','on');
end

% --- Executes on button press in cp.
function cp_Callback(hObject, eventdata, handles)
% hObject    handle to cp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cp

rchma=get(hObject,'Value')
h=guidata(gcbo);
if rchma==1
   set(h.ra,'Enable','off'); 
   set(h.inta,'Enable','on'); 
    set(h.intb,'Enable','on');
    set(h.aa,'Enable','on'); 
    set(h.bb,'Enable','on');
    rchaut=0
    save rchma;
end
if rchma==0
   set(h.ra,'Enable','on');
   save rchma;
end


% --- Executes during object creation, after setting all properties.
function inta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function inta_Callback(hObject, eventdata, handles)
% hObject    handle to inta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inta as text
%        str2double(get(hObject,'String')) returns contents of inta as a double
intervallea=str2double(get(hObject,'String'));
save intervallea;
% --- Executes during object creation, after setting all properties.
function intb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function intb_Callback(hObject, eventdata, handles)
% hObject    handle to intb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intb as text
%        str2double(get(hObject,'String')) returns contents of intb as a double

intervalleb=str2double(get(hObject,'String'));
save intervalleb;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button = questdlg('Voulez Vous fermer ?', ...
                  'Quiter l''application','Oui','Non','No');
switch button
  case 'Oui',
      clc;
disp('*******************************************************************');
disp('************     D�velopp�e par :MEKHMOUKH Abdenour   *************');
disp('************        D�partement d''Electronique        *************');
disp('************      Universit� de Bejaia Ao�t 2006      *************');
disp('*******************************************************************');
      close;
  case 'Non',
    quit cancel;
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

data = getappdata(gcbf, 'metricdata');

epsilon=data.epsilon;
ro=data.ro;
h=guidata(gcbo);  
vgraphe=get(h.pl,'Value');
rchaut=get(h.ra,'Value');
rchma=get(h.cp,'Value');
load rchaut;
load rchma;
save vgraphe;
load y;

sectiondoree;
h = waitbar(0,'Chargement des R�sultats en cours.........');
for i=1:500, 
waitbar(i/500)
end
close(h) 

resultatunid;

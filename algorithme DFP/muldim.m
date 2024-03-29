function varargout = muldim(varargin)
% MULDIM M-file for muldim.fig
%      MULDIM, by itself, creates a new MULDIM or raises the existing
%      singleton*.
%
%      H = MULDIM returns the handle to a new MULDIM or the handle to
%      the existing singleton*.
%
%      MULDIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULDIM.M with the given input arguments.
%
%      MULDIM('Property','Value',...) creates a new MULDIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before muldim_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to muldim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help muldim

% Last Modified by GUIDE v2.5 30-Jul-2006 08:13:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @muldim_OpeningFcn, ...
                   'gui_OutputFcn',  @muldim_OutputFcn, ...
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


% --- Executes just before muldim is made visible.
function muldim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to muldim (see VARARGIN)

% Choose default command line output for muldim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes muldim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = muldim_OutputFcn(hObject, eventdata, handles)
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

% Hint: popupmenu controls usually have a white background on Windows.
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
h=guidata(gcbo); 
set(h.gra,'Enable','on');
if choix==1

  h=guidata(gcbo);   
 set(h.expfonction,'String',['100*(y-x^2)^2+(1-x)^2'],'FontSize',14);
 nf='100*(y-x^2)^2+(1-x)^2';
 save nf;
end 

if choix==2
  h=guidata(gcbo);   
 set(h.expfonction,'String',['x-y+2*x^2+2*x*y+y^2'],'FontSize',14);
 nf='x-y+2*x^2+2*x*y+y^2';
 save nf;
end 


if choix==3
  h=guidata(gcbo);   
 set(h.expfonction,'String',['exp(x^2+5*y^2)+x^2+80*y^2'],'FontSize',14);
 nf='exp(x^2+5*y^2)+x^2+80*y^2';
 save nf;
end 


if choix==4
  h=guidata(gcbo);  
  set(h.gra,'Enable','off');
 set(h.expfonction,'String',['(x+ 10*y)^2 + 5*(z-w)^2 +(y-2*z)^4+ 10*(x-w)^4'],'FontSize',14);
 nf='(x+ 10*y)^2 + 5*(z-w)^2 +(y-2*z)^4+ 10*(x-w)^4';
 save nf;
end 

if choix==5
  h=guidata(gcbo);   
 set(h.expfonction,'String',['(x-2)^2+(x-2*y)^2'],'FontSize',14);
 nf='(x-2)^2+(x-2*y)^2';
 save nf;
end 

if choix==6
  h=guidata(gcbo);   
 set(h.expfonction,'String',['10*x^2+y^2'],'FontSize',14);
 nf='10*x^2+y^2';
 save nf;
end 

if choix==7
  h=guidata(gcbo);   
 set(h.expfonction,'String',['3*x^2+4*y^2-6*x+16*y+19'],'FontSize',14);
 nf='3*x^2+4*y^2-6*x+16*y+19';
 save nf;
end 

if choix==8
  h=guidata(gcbo);   
 set(h.expfonction,'String',['3*(x-0.5)^2+7*(y-0.75)^2'],'FontSize',14);
 nf='3*(x-0.5)^2+7*(y-0.75)^2';
 save nf;
end 

if choix==9
  h=guidata(gcbo);   
 set(h.expfonction,'String',['3*x^2+3*y^2+4*x*y+2'],'FontSize',14);
 nf='3*x^2+3*y^2+4*x*y+2';
 save nf;
end 

if choix==10
  h=guidata(gcbo);   
 set(h.expfonction,'String',['3*x^2 + 2*x*y + y^2'],'FontSize',14);
 nf='3*x^2 + 2*x*y + y^2';
 save nf;
end 

if choix==11
   h=guidata(gcbo);   
 set(h.expfonction,'String',['x^4+y^4-2*x^2-4*x*y-2*y^2'],'FontSize',14);
 nf='x^4+y^4-2*x^2-4*x*y-2*y^2';
 save nf;
end 
if choix==12
   h=guidata(gcbo);   
 set(h.expfonction,'String',['2+((x-1)^2+(y-1)^2)'],'FontSize',14);
 nf='2+((x-1)^2+(y-1)^2)';
 save nf;
end
if choix==13
   h=guidata(gcbo);   
 set(h.expfonction,'String',['2*x^2+4*x*y^3-10*x*y+y^2'],'FontSize',14);
 nf='2*x^2+4*x*y^3-10*x*y+y^2';
 save nf;
end

if choix==14
   h=guidata(gcbo);   
 set(h.expfonction,'String',['8*x^2+4*x*y+5*y^2'],'FontSize',14);
 nf='8*x^2+4*x*y+5*y^2';
 save nf;
end

if choix==15
   h=guidata(gcbo);   
 set(h.expfonction,'String',['1.2+0.1*x^2+((0.1+0.1*y^2)/x^2)+((0.1*x^2*y^2+10)/(x*y)^4)'],'FontSize',14);
 nf='1.2+0.1*x^2+((0.1+0.1*y^2)/x^2)+((0.1*x^2*y^2+10)/(x*y)^4)';
 save nf;
end

if choix==16
   h=guidata(gcbo);   
 set(h.expfonction,'String',['sin(x)* sin(y)* exp(-x^2 - y^2)'],'FontSize',14);
 nf='sin(x)* sin(y)* exp(-x^2 - y^2)';
 save nf;
end

if choix==17
   h=guidata(gcbo);   
 set(h.expfonction,'String',['x*exp(-x^2-y^2)'],'FontSize',14);
 nf='x*exp(-x^2-y^2)';
 save nf;
end





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
ro = str2double(get(hObject, 'String'));
if isnan(ro)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.ro = ro;
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



% --- Executes during object creation, after setting all properties.
function nv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function nv_Callback(hObject, eventdata, handles)
% hObject    handle to nv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nv as text
%        str2double(get(hObject,'String')) returns contents of nv as a double
nv = str2double(get(hObject, 'String'));
if isnan(nv)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.nv = nv;
save nv;
setappdata(gcbf, 'metricdata', data);
h=guidata(gcbo);
if nv==2
  set(h.x3, 'Visible', 'off');
   set(h.x4, 'Visible', 'off');
    set(h.zz, 'Visible', 'off');
   set(h.ww, 'Visible', 'off');
end

if nv==3
  
   set(h.x4, 'Visible', 'off');
   
   set(h.ww, 'Visible', 'off');
end
if nv==4
  set(h.x3, 'Visible', 'on');
   set(h.x4, 'Visible', 'on');
    set(h.zz, 'Visible', 'on');
   set(h.ww, 'Visible', 'on');
end


% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double
x1 = str2double(get(hObject, 'String'));
if isnan(x1)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.x1 = x1;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function x2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function x2_Callback(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x2 as text
%        str2double(get(hObject,'String')) returns contents of x2 as a double
x2 = str2double(get(hObject, 'String'));
if isnan(x2)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.x2 = x2;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function x3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function x3_Callback(hObject, eventdata, handles)
% hObject    handle to x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x3 as text
%        str2double(get(hObject,'String')) returns contents of x3 as a double
x3 = str2double(get(hObject, 'String'));
if isnan(x3)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.x3 = x3;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function x4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function x4_Callback(hObject, eventdata, handles)
% hObject    handle to x4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x4 as text
%        str2double(get(hObject,'String')) returns contents of x4 as a double
x4 = str2double(get(hObject, 'String'));
if isnan(x4)
    set(hObject, 'String', 0);
    errordlg('Entrer un nombre SVP','Error');
end

data = getappdata(gcbf, 'metricdata');
data.x4 = x4;
setappdata(gcbf, 'metricdata', data);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)






% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
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




% --- Executes on button press in gra.
function gra_Callback(hObject, eventdata, handles)
% hObject    handle to gra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gra
vgra=get(hObject,'Value');
save vgra;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


load parmetresmulti;
h=guidata(gcbo);  
vgra=get(h.gra,'Value');
save vgra;

if nv==2
    data = getappdata(gcbf, 'metricdata');
x1=data.x1;
x2=data.x2;
x3=0;
x4=0;
    x0=[x1 x2];
    
end

if nv==3
data = getappdata(gcbf, 'metricdata');
x1=data.x1;
x2=data.x2;
x3=data.x3;
x4=0;
x0=[x1 x2 x3];
end

if nv==4
data = getappdata(gcbf, 'metricdata');
x1=data.x1;
x2=data.x2;
x3=data.x3;
x4=data.x4;    
x0=[x1 x2 x3 x4];
end

save x0;
h = waitbar(0,'Recherche du point minimum en cours.........');
for i=1:1000, % computation here %
waitbar(i/500)
end
close(h) 
algodfp;


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = getappdata(gcbf, 'metricdata');
epsilon=data.epsilon;
ro=data.ro;
nv=data.nv;


savefile = 'parmetresmulti.mat';

save(savefile,'ro','epsilon','nv')
h=guidata(gcbo);
if nv==2
  set(h.x3, 'Visible', 'off');
   set(h.x4, 'Visible', 'off');
    set(h.zz, 'Visible', 'off');
   set(h.ww, 'Visible', 'off');
    
end

if nv==3

   set(h.x3, 'Visible', 'on');
   set(h.x4, 'Visible', 'off');
   set(h.zz, 'Visible', 'on');
   
end
if nv==4

   set(h.x3, 'Visible', 'on');
   set(h.x4, 'Visible', 'on');
   set(h.zz, 'Visible', 'on');
    set(h.ww, 'Visible', 'on');
end


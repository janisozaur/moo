function varargout = dfp(varargin)
% DFP M-file for dfp.fig
%      DFP, by itself, creates a new DFP or raises the existing
%      singleton*.
%
%      H = DFP returns the handle to a new DFP or the handle to
%      the existing singleton*.
%
%      DFP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DFP.M with the given input arguments.
%
%      DFP('Property','Value',...) creates a new DFP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dfp_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dfp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dfp

% Last Modified by GUIDE v2.5 28-Jul-2006 11:34:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dfp_OpeningFcn, ...
                   'gui_OutputFcn',  @dfp_OutputFcn, ...
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


% --- Executes just before dfp is made visible.
function dfp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dfp (see VARARGIN)

% Choose default command line output for dfp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
clc;
% UIWAIT makes dfp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dfp_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

val=get(hObject,'Value');
h=guidata(gcbo); 
if val==1
   set(h.radiobutton2,'Enable','off'); 

unidim;
end;
if val==0
   set(h.radiobutton2,'Enable','on'); 
end;



% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
vall=get(hObject,'Value');
h=guidata(gcbo);
if vall==1
   set(h.radiobutton1,'Enable','off'); 
muldim;

end;
if vall==0
   set(h.radiobutton1,'Enable','on'); 
end;



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button = questdlg('Voulez Vous fermer l''Application ?', ...
                  'Quiter l''application','Oui','Non','No');
switch button
  case 'Oui',
      clc;
disp('*******************************************************************');
disp('************     Développée par :MEKHMOUKH Abdenour   *************');
disp('************        Département d''Electronique        *************');
disp('************      Université de Bejaia Août 2006      *************');
disp('*******************************************************************');
      close;
  case 'Non',
    quit cancel;
end


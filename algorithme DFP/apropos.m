function varargout = apropos(varargin)
% APROPOS M-file for apropos.fig
%      APROPOS, by itself, creates a new APROPOS or raises the existing
%      singleton*.
%
%      H = APROPOS returns the handle to a new APROPOS or the handle to
%      the existing singleton*.
%
%      APROPOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APROPOS.M with the given input arguments.
%
%      APROPOS('Property','Value',...) creates a new APROPOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before apropos_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property apropos
%      stop.  All inputs are passed to apropos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help apropos

% Last Modified by GUIDE v2.5 12-Jul-2006 20:38:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @apropos_OpeningFcn, ...
                   'gui_OutputFcn',  @apropos_OutputFcn, ...
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


% --- Executes just before apropos is made visible.
function apropos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to apropos (see VARARGIN)

% Choose default command line output for apropos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes apropos wait for user response (see UIRESUME)
% uiwait(handles.figure1);
im=imread('image.jpg');
imshow(im);

% --- Outputs from this function are returned to the command line.
function varargout = apropos_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
demarrerapplication;


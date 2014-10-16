function varargout = graf(varargin)
% GRAF M-file for graf.fig
%      GRAF, by itself, creates a new GRAF or raises the existing
%      singleton*.
%
%      H = GRAF returns the handle to a new GRAF or the handle to
%      the existing singleton*.
%
%      GRAF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAF.M with the given input arguments.
%
%      GRAF('Property','Value',...) creates a new GRAF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graf_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graf_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graf

% Last Modified by GUIDE v2.5 21-Mar-2011 16:25:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graf_OpeningFcn, ...
                   'gui_OutputFcn',  @graf_OutputFcn, ...
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


% --- Executes just before graf is made visible.
function graf_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graf (see VARARGIN)

% Choose default command line output for graf
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graf wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = graf_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function edit_precyzja_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function edit_precyzja_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_xpocz_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function edit_xpocz_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_xkon_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit_xkon_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_ypocz_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_ypocz_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_ykon_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_ykon_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_funkcja_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit_funkcja_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit_x_punktu_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function edit_x_punktu_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_y_punktu_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function edit_y_punktu_Callback(hObject, eventdata, handles)

% --- Executes on button press in pushbutton_precyzja.
function pushbutton_precyzja_Callback(hObject, eventdata, handles)

xpocz=eval(get(handles.edit_xpocz,'String'));
xkon=eval(get(handles.edit_xkon,'String'));
ypocz=eval(get(handles.edit_ypocz,'String'));
ykon=eval(get(handles.edit_ykon,'String'));
set(handles.edit_precyzja,'String',(min(abs(xpocz)+abs(xkon),abs(ypocz)+abs(ykon)))/50);


% --- Executes on button press in pushbutton_wyswietl3d.
function pushbutton_wyswietl3d_Callback(hObject, eventdata, handles)

funkcja=inline(get(handles.edit_funkcja,'String'));
xpocz=eval(get(handles.edit_xpocz,'String'));
xkon=eval(get(handles.edit_xkon,'String'));
ypocz=eval(get(handles.edit_ypocz,'String'));
ykon=eval(get(handles.edit_ykon,'String'));
if xpocz>xkon
    buf=xkon;
    xkon=xpocz;
    xpocz=buf;
end
if ypocz>ykon
    buf=ykon;
    ykon=ypocz;
    ypocz=buf;
end
figure(2);
colormap jet;
ezmesh(funkcja,[xpocz, xkon, ypocz, ykon]);
%ezsurf(funkcja,[xpocz, xkon, ypocz, ykon]);


% --- Executes on button press in pushbutton_wyswietl.
function pushbutton_wyswietl_Callback(hObject, eventdata, handles)
cla;
funkcja=inline(get(handles.edit_funkcja,'String'));
xpocz=eval(get(handles.edit_xpocz,'String'));
xkon=eval(get(handles.edit_xkon,'String'));
ypocz=eval(get(handles.edit_ypocz,'String'));
ykon=eval(get(handles.edit_ykon,'String'));
if xpocz>xkon
    buf=xkon;
    xkon=xpocz;
    xpocz=buf;
end
if ypocz>ykon
    buf=ykon;
    ykon=ypocz;
    ypocz=buf;
end
precyzja=eval(get(handles.edit_precyzja,'String'));
[X,Y] = meshgrid(xpocz:precyzja:xkon,ypocz:precyzja:ykon);
axis([xpocz,xkon,ypocz,ykon]);
colormap jet;
contourf(X,Y,funkcja(X,Y),80,':');

% --- Executes on button press in pushbutton_wybierz_punkt.
function pushbutton_wybierz_punkt_Callback(hObject, eventdata, handles)
[xo,yo] = ginput(1);
%fprintf(1,'Xo = %f\n', xo);
%fprintf(1,'Yo = %f', yo);
set(handles.edit_x_punktu,'String',xo);
set(handles.edit_y_punktu,'String',yo);
%funkcja=inline(get(handles.edit_funkcja,'String'));
%hfunkcja=@funkcja;


% --- Executes during object creation, after setting all properties.
function edit_ograniczenie1_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_ograniczenie1_Callback(hObject, eventdata, handles)

function popupmenu_ogr1_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_ogr1.
function popupmenu_ogr1_Callback(hObject, eventdata, handles)

function edit_ograniczenie2_CreateFcn(hObject, eventdata, handles)

if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function edit_ograniczenie2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function popupmenu_ogr2_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_ogr2.
function popupmenu_ogr2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_ograniczenie3_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_ograniczenie3_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function popupmenu_ogr3_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_ogr3.
function popupmenu_ogr3_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_ograniczenie4_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_ograniczenie4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function popupmenu_ogr4_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_ogr4.
function popupmenu_ogr4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_ograniczenie5_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_ograniczenie5_Callback(hObject, eventdata, handles)

function popupmenu_ogr5_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_ogr5.
function popupmenu_ogr5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit_ograniczenie6_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit_ograniczenie6_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function popupmenu_ogr6_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu_ogr6.
function popupmenu_ogr6_Callback(hObject, eventdata, handles)

% --- Executes on button press in pushbutton_wyswietl_ogr.
function pushbutton_wyswietl_ogr_Callback(hObject, eventdata, handles)
cla;
funkcja=inline(get(handles.edit_funkcja,'String'));
xpocz=eval(get(handles.edit_xpocz,'String'));
xkon=eval(get(handles.edit_xkon,'String'));
ypocz=eval(get(handles.edit_ypocz,'String'));
ykon=eval(get(handles.edit_ykon,'String'));
if xpocz>xkon
    buf=xkon;
    xkon=xpocz;
    xpocz=buf;
end
if ypocz>ykon
    buf=ykon;
    ykon=ypocz;
    ypocz=buf;
end
precyzja=eval(get(handles.edit_precyzja,'String'));
[X,Y] = meshgrid(xpocz:precyzja:xkon,ypocz:precyzja:ykon);
axis([xpocz,xkon,ypocz,ykon]);
colormap pink;
contourf(X,Y,funkcja(X,Y),80,':');

ograniczenia=char(get(handles.edit_ograniczenie1,'String'),get(handles.edit_ograniczenie2,'String'),get(handles.edit_ograniczenie3,'String'),get(handles.edit_ograniczenie4,'String'),get(handles.edit_ograniczenie5,'String'),get(handles.edit_ograniczenie6,'String'));
znaki=[get(handles.popupmenu_ogr1,'Value');get(handles.popupmenu_ogr2,'Value');get(handles.popupmenu_ogr3,'Value');get(handles.popupmenu_ogr4,'Value');get(handles.popupmenu_ogr5,'Value');get(handles.popupmenu_ogr6,'Value')];

clear precyzja;
precyzja=(min(abs(xpocz)+abs(xkon),abs(ypocz)+abs(ykon)))/50;
x=xpocz:precyzja:xkon;
y=ypocz:precyzja:ykon;

hold on
for k=1:size(ograniczenia,1)
    if ~isspace(ograniczenia(k))
        ezplot(inline(ograniczenia(k,:)),[xpocz,xkon,ypocz,ykon]);        
        axis([xpocz,xkon,ypocz,ykon]);
        krok1=ceil(length(x)/25);
        krok2=ceil(length(y)/25);
        fun=inline(ograniczenia(k,:));
        for i=1:krok1:length(x)
            for j=1:krok2:length(y)
                if fun(x(i),y(j))>0 && znaki(k)==1
                    plot(x(i),y(j),'*b','MarkerSize',9);
                elseif fun(x(i),y(j))<0 && znaki(k)==3
                    plot(x(i),y(j),'*b','MarkerSize',9);
                end
            end
        end
    end
end
hold off


% --------------------------------------------------------------------
function program_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function wyjscie_Callback(hObject, eventdata, handles)
set(0,'ShowHiddenHandles','on')
delete(get(0,'Children'))

% --------------------------------------------------------------------
function pomoc_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function instrukcja_Callback(hObject, eventdata, handles)
opis=['Pierwszą czynnością powinno być wpisanie wzoru funkcji dwóch zmiennych w pole w lewym górnym rogu ekranu. ',...
          'Następnie należy ustalić przedziały, w których będziemy rozpatrywać tę funkcję, wypełniając cztery pola znajdujące się poniżej. ',...
          'Wartości nie muszą buć podawane w kolejności rosnącej. Pole "precyzja" decyduje o tym jak szczegółowy będzie wykres. ',...
          'Jeśli przedziały (x1,x2) lub (y1,y2) są małe, to wykres może być "kanciasty". Należy wtedy ZMNIEJSZYĆ wartość pola "precyzja" ',...
          'lub posłużyć się przyciskiem "Sugerowana precyzja". Przycisk "Wyświetl 3D" rysuje w osobnym oknie trójwymiarowy wykres ',...
          'rozpatrywanej funkcji, dając użytkownikowi ogólny pogląd na jej kształt. "Wyświetl" rysuje wykes konturowy funkcji. ',...
          'Kolory na tym wykresie oznaczają wartość: niebieski - małe wartości, czerwony - duże wartości. Poniżej znajdują się pola, ',...
          'w które należy wpisać ograniczenia równościowe bądź nierównościowe. Do wyświetlenia funkcji celu z nałożonymi ograniczeniami ',...
          'służy duży przycisk znajdujący się w prawym dolnym rogu okienka. Na tym wykresie obowiązuje nieco inna kolorystyka, ale nadal kolory ',...
          'ciemne wskazują na niskie wartości, a jasne na wartości wysokie. Obszary nie spełniające ograniczeń są zaznaczone gwiazdkami. ',...
          'Aby oszacować graficznie minimum można nacisnąć przycisk "Wybierz punkt" i kliknąć na wykresie w miejsce, które wygląda na minimum. ',...
          'Jeśli wykres nie pozwala nam dokładnie wskazać tego punktu, możemy ponownie wyświetlić funkcję w zmniejszonym przedziale. ',...
          'Przy wpisywaniu funkcji i ograniczeń, jeżeli chcemy je uzależnić tylko od jednej zmiennej, to drugą należy zapisać jako "0*zmienna", np: ',...
          '"y.^2+2.*y-5+0*x".'];
          
msgbox(opis,'Instrukcja obsługi','help')

% --------------------------------------------------------------------
function autorzy_Callback(hObject, eventdata, handles)
msgbox(char('NN 1','NN 2','FTIMS, Informatyka, sem.VII'),'Autorzy','help')

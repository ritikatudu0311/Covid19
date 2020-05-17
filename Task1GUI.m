function varargout = Task1GUI(varargin)
% TASK1GUI MATLAB code for Task1GUI.fig
%      TASK1GUI, by itself, creates a new TASK1GUI or raises the existing
%      singleton*.
%
%      H = TASK1GUI returns the handle to a new TASK1GUI or the handle to
%      the existing singleton*.
%
%      TASK1GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TASK1GUI.M with the given input arguments.
%
%      TASK1GUI('Property','Value',...) creates a new TASK1GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Task1GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Task1GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Task1GUI

% Last Modified by GUIDE v2.5 14-May-2020 21:01:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Task1GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Task1GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Task1GUI is made visible.
function Task1GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Task1GUI (see VARARGIN)

% Choose default command line output for Task1GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Task1GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Task1GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in countryname_popupmenu.
function countryname_popupmenu_Callback(hObject, eventdata, handles)
x = get(handles.countryname_popupmenu, 'Value');

load data.mat;
switch x;
    case 2
        set(handles.edit1,'string',159119);
        set(handles.edit2,'string',6288);
    case 3
        set(handles.edit1,'string',83917);
        set(handles.edit2,'string',4637);
    case 4
        set(handles.edit1,'string',33050);
        set(handles.edit2,'string',1074);
    case 5
        set(handles.edit1,'string',203591);
        set(handles.edit2,'string',27682);
    case 6
        set(handles.edit1,'string',1039909);
        set(handles.edit2,'string',60996);
end
% hObject    handle to countryname_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns countryname_popupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from countryname_popupmenu


% --- Executes during object creation, after setting all properties.
function countryname_popupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to countryname_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in confirmed_pushbutton.
function confirmed_pushbutton_Callback(hObject, eventdata, handles)
x = get(handles.countryname_popupmenu, 'Value');

load data.mat;
figure;
xlabel('Number of Days');
ylabel('Number of cases');
switch x
    case 2
        a= data.dateRep(1:121);
        b= data.cases(1:121);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed Cases');
        title('GERMANY');
    case 3
        a= data.dateRep(123:243);
        b= data.cases(123:243);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed cases');
        title('CHINA');
    case 4
        a= data.dateRep(245:364);
        b= data.cases(245:364);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed Cases');
        title('INDIA');
    case 5
        a= data.dateRep(366:486);
        b= data.cases(366:486);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed Cases');
        title('ITALY');
    case 6
        a= data.dateRep(488:608);
        b= data.cases(488:608);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed Cases');
        title('United States Of America');
end
grid on;
    

% hObject    handle to confirmed_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in deceased_pushbutton.
function deceased_pushbutton_Callback(hObject, eventdata, handles)
x = get(handles.countryname_popupmenu, 'Value');

load data.mat;
figure;
xlabel('Number of Days');
ylabel('Number of Cases');
switch x
    case 2
        a=data.dateRep(1:121);
        b=data.deaths(1:121);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('GERMANY');
    case 3
        a=data.dateRep(123:243);
        b=data.deaths(123:243);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('CHINA');
    case 4
        a= data.dateRep(245:364);
        b= data.deaths(245:364);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('INDIA');
    case 5
        a= data.dateRep(366:486);
        b= data.deaths(366:486);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('ITALY');
    case 6
        a= data.dateRep(488:608);
        b= data.deaths(488:608);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('United States Of America');
        
        
end
grid on;
% hObject    handle to deceased_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in both_pushbutton.
function both_pushbutton_Callback(hObject, eventdata, handles)
x = get(handles.countryname_popupmenu,'Value');
load data.mat;
figure;
xlabel('Number of Days');
ylabel('Number of Cases');
switch x
     case 2
        a= data.dateRep(1:121);
        b= data.cases(1:121);
        subplot(1,2,1);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed Cases');
        title('GERMANY');
        grid on;
        subplot(1,2,2);
        a=data.dateRep(1:121);
        b=data.deaths(1:121);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('GERMANY');
     case 3
        a= data.dateRep(123:243);
        b= data.cases(123:243);
        subplot(1,2,1);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed Cases');
        title('CHINA');
        grid on;
        subplot(1,2,2);
        a=data.dateRep(123:243);
        b=data.deaths(123:243);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('CHINA');
    case 4
        a= data.dateRep(245:364);
        b= data.cases(245:364);
        subplot(1,2,1);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of  Confirmed Cases');
        title('INDIA');
        grid on;
        subplot(1,2,2);
        a= data.dateRep(245:364);
        b= data.deaths(245:364);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('INDIA');
    case 5
        a= data.dateRep(366:486);
        b= data.cases(366:486);
        subplot(1,2,1);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Coonfirmed Cases');
        title('ITALY');
        grid on;
        subplot(1,2,2);
        a= data.dateRep(366:486);
        b= data.deaths(366:486);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('ITALY');
    case 6
        a= data.dateRep(488:608);
        b= data.cases(488:608);
        subplot(1,2,1);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Confirmed Cases');
        title('United States Of America');
        grid on;
        subplot(1,2,2);
        a= data.dateRep(488:608);
        b= data.deaths(488:608);
        bar(a,b);
        xlabel('Number of Days');
        ylabel('Number of Deceased Cases');
        title('United States Of America');
end
grid on;
       
        
        
    

% hObject    handle to both_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

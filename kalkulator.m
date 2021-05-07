function varargout = kalkulator(varargin)
% KALKULATOR MATLAB code for kalkulator.fig
%      KALKULATOR, by itself, creates a new KALKULATOR or raises the existing
%      singleton*.
%
%      H = KALKULATOR returns the handle to a new KALKULATOR or the handle to
%      the existing singleton*.
%
%      KALKULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KALKULATOR.M with the given input arguments.
%
%      KALKULATOR('Property','Value',...) creates a new KALKULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kalkulator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kalkulator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kalkulator

% Last Modified by GUIDE v2.5 05-May-2021 13:43:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kalkulator_OpeningFcn, ...
                   'gui_OutputFcn',  @kalkulator_OutputFcn, ...
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


% --- Executes just before kalkulator is made visible.
function kalkulator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kalkulator (see VARARGIN)

% Choose default command line output for kalkulator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kalkulator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kalkulator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txthasil_Callback(hObject, eventdata, handles)
% hObject    handle to txthasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txthasil as text
%        str2double(get(hObject,'String')) returns contents of txthasil as a double


% --- Executes during object creation, after setting all properties.
function txthasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txthasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in angka7.
function angka7_Callback(hObject, eventdata, handles)
% hObject    handle to angka7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','7') ;
else
textString =strcat(textString,'7');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in angka8.
function angka8_Callback(hObject, eventdata, handles)
% hObject    handle to angka8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','8') ;
else
textString =strcat(textString,'8');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in angka9.
function angka9_Callback(hObject, eventdata, handles)
% hObject    handle to angka9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','9') ;
else
textString =strcat(textString,'9');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in kali.
function kali_Callback(hObject, eventdata, handles)
% hObject    handle to kali (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.txthasil,'String');
textString =strcat(textString,'*');
set(handles.txthasil,'String',textString)

% --- Executes on button press in angka4.
function angka4_Callback(hObject, eventdata, handles)
% hObject    handle to angka4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','4') ;
else
textString =strcat(textString,'4');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in angka5.
function angka5_Callback(hObject, eventdata, handles)
% hObject    handle to angka5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','5') ;
else
textString =strcat(textString,'5');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in angka6.
function angka6_Callback(hObject, eventdata, handles)
% hObject    handle to angka6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','6') ;
else
textString =strcat(textString,'6');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in bagi.
function bagi_Callback(hObject, eventdata, handles)
% hObject    handle to bagi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.txthasil,'String');
textString =strcat(textString,'/');
set(handles.txthasil,'String',textString)

% --- Executes on button press in angka1.
function angka1_Callback(hObject, eventdata, handles)
% hObject    handle to angka1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','1') ;
else
textString =strcat(textString,'1');
set(handles.txthasil,'String',textString);
end
jj=0;




% --- Executes on button press in angka2.
function angka2_Callback(hObject, eventdata, handles)
% hObject    handle to angka2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','2') ;
else
textString =strcat(textString,'2');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in angka3.
function angka3_Callback(hObject, eventdata, handles)
% hObject    handle to angka3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','3') ;
else
textString =strcat(textString,'3');
set(handles.txthasil,'String',textString);
end
jj=0;

% --- Executes on button press in tambah.
function tambah_Callback(hObject, eventdata, handles)
% hObject    handle to tambah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.txthasil,'String');
textString =strcat(textString,'+');
set(handles.txthasil,'String',textString)

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txthasil,'String','0.') ;

% --- Executes on button press in angka0.
function angka0_Callback(hObject, eventdata, handles)
% hObject    handle to angka0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
textString = get(handles.txthasil,'String');
if(strcmp(textString,'0.')==1)&&(jj==0)
set(handles.txthasil,'String','0') ;
else
textString =strcat(textString,'0');
set(handles.txthasil,'String',textString);
end
jj=0;
% --- Executes on button press in samadenggan.
function samadenggan_Callback(hObject, eventdata, handles)
% hObject    handle to samadenggan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.txthasil,'String');
ans =eval(textString);
set(handles.txthasil,'String',ans)

% --- Executes on button press in kurang.
function kurang_Callback(hObject, eventdata, handles)
% hObject    handle to kurang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.txthasil,'String');
textString =strcat(textString,'-');
set(handles.txthasil,'String',textString)

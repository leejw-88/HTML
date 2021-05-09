HTML 태그
HTML 태그(tag)는 HTML 요소(element)라고도 부르며, HTML 문서를 구성하는 기본 단위입니다.

<form> 태그 :
<form> 태그는 사용자로부터 입력을 받을 수 있는 HTLM 입력 폼(form)을 정의할 때 사용합니다.

action 속성 :
action 속성은 입력받은 데이터를 처리할 서버 상의 스크립트 파일의 주소를 명시합니다.
이렇게 전달받은 데이터를 처리하는 스크립트 파일을 폼 핸들러(form-handler)라고 합니다.
HTML5에서는 더 이상 <form> 요소에 반드시 action 속성을 명시할 필요가 없도록 변경되었습니다.

문법
<form action="URL"></form>

 method 속성 :
method 속성을 통해 명시할 수 있는 form 요소의 전달 방식은 GET 방식과 POST 방식으로 나눠집니다.(default 값 GET)

문법
<form method="get|post">

GET 방식은 URL에 폼 데이터를 추가하여 서버로 전달하는 방식입니다.
GET 방식의 HTTP 요청은 브라우저에 의해 캐시되어(cached) 저장됩니다.
또한, GET 방식은 보통 쿼리 문자열(query string)에 포함되어 전송되므로, 길이의 제한이 있습니다.
따라서 보안상 취약점이 존재하므로, 중요한 데이터는 POST 방식을 사용하여 요청하는 것이 좋습니다.

POST 방식은 폼 데이터를 별도로 첨부하여 서버로 전달하는 방식입니다.
POST 방식의 HTTP 요청은 브라우저에 의해 캐시되지 않으므로, 브라우저 히스토리에도 남지 않습니다.
또한, POST 방식의 HTTP 요청에 의한 데이터는 쿼리 문자열과는 별도로 전송됩니다.
따라서 데이터의 길이에 대한 제한도 없으며, GET 방식보다 보안성이 높습니다.

enctype 속성 :
<form> 태그의 enctype 속성은 폼 데이터(form data)가 서버로 제출될 때 해당 데이터가 인코딩되는 방법을 명시합니다.
이 속성은 <form> 요소의 method 속성값이 “post”인 경우에만 사용할 수 있습니다.

문법
<form enctype="속성값">

enctype 속성값
application/x-www-form-urlencoded : 기본값으로, 모든 문자들은 서버로 보내기 전에 인코딩됨을 명시함.
multipart/form-data :모든 문자를 인코딩하지 않음을 명시함.이 방식은 <form> 요소가 파일이나 이미지를 서버로 전송할 때 주로 사용함.
text/plain :공백 문자(space)는 "+" 기호로 변환하지만, 나머지 문자는 모두 인코딩되지 않음을 명시함.


<input> 태그 :
<form> 태그는 전체 양식을 의미하며, 화면에 보이지 않는 추상적인 태그입니다.
실제로 사용자가 양식을 입력하기 위한 태그는 <input> 태그 등이 사용됩니다.
type 속성을 통해 종류를 나타내며, name을 통해 데이터의 이름, value를 통해 기본 값을 지정합니다.
	
문법
<input type="속성값">

속성값
text : <input type=“text”>는 type 속성의 기본값으로, 한 줄로 된 텍스트 필드를 정의합니다.
텍스트 필드의 기본 너비는 20개의 문자(character)가 보일 수 있는 너비입니다.

password : <input type=“password”>는 비밀번호를 입력할 수 있는 입력 필드를 정의합니다.
이 속성값은 입력된 모든 문자나 숫자 대신 별표나 작은 원 모양으로 변경하여 보여줍니다.
비밀번호와 같은 중요한 정보와 관련된 폼(form) 데이터는 HTTPS 프로토콜을 통해 서비스되는 것이 좋습니다.

hidden : <input type="hidden">은 사용자에게는 보이지 않는 숨겨진 입력 필드를 정의합니다.
숨겨진 입력 필드는 렌더링이 끝난 웹 페이지에서는 전혀 보이지 않으며, 페이지 콘텐츠 내에서 그것을 볼 수 있게 만드는 방법도 없습니다.
따라서 숨겨진 입력 필드는 폼 제출 시 사용자가 변경해서는 안 되는 데이터를 함께 보낼 때 유용하게 사용됩니다.
이러한 입력 필드는 업데이트 되어야 하는 데이터베이스의 레코드를 저장하거나, 고유한 보안 토큰 등을 서버로 보낼 때 주로 사용됩니다.

file : <input type="file">은 업로드할 파일을 선택할 수 있는 입력 필드와 “파일 선택” 버튼을 정의합니다.
이 입력 필드를 통해 사용자는 자신의 저장소(storage)에서 파일을 선택할 수 있으며, multiple 속성이 명시되어 있으면 여러 개의 파일을 동시에 선택할 수도 있습니다. 
이렇게 선택된 파일은 폼 제출을 통해 서버로 보내거나 자바스크립트 코드와 파일 API 등을 사용하여 조작할 수 있게 됩니다.

button : <input type=“button”>은 주로 자바스크립트와 함께 스크립트를 활성화시키기 위해 사용되는 클릭할 수 있는 버튼을 정의합니다.

submit : <input type=“submit”>는 서버의 폼 핸들러(form handler)로 폼 데이터(form date)를 전송하는 제출 버튼(submit button)을 정의합니다.
폼 핸들러는 일반적으로 입력된 데이터를 처리하는 스크립트를 포함하고 있는 서버 페이지이며, 이러한 폼 핸들러의 주소는 <form> 요소의 action 속성에 명시됩니다.

<textarea> 태그 :
<textarea> 태그는 사용자가 여러 줄의 텍스트를 입력할 수 있는 텍스트 입력 영역을 정의할 때 사용합니다.
텍스트 입력 영역에는 개수의 제한 없이 문자를 입력할 수 있으며, 입력된 문자는 고정폭 글꼴로 렌더링됩니다.
텍스트 입력 영역의 크기는 <textarea> 요소의 cols 속성과 rows 속성으로 지정할 수 있으며, CSS에서 height 속성과 width 속성을 사용하면 더욱 손쉽게 지정할 수 있습니다
문법
<form action="#" method="get">
    <textarea name="opinion" cols="30" rows="5"></textarea>
</form>

<selec> 태그 :
<select> 태그는 옵션 메뉴를 제공하는 드롭다운 리스트(drop-down list)를 정의할 때 사용합니다.
<select> 요소 내부의 <option> 요소는 드롭다운 리스트(drop-down list)에서 사용되는 각각의 옵션을 정의합니다.
이러한 <select> 요소는 사용자로부터 입력을 받기 위한 폼(form)에 사용될 수 있습니다.

문법
<select>
    <option value="americano">아메리카노</option>
    <option value="caffe latte">카페라테</option>
    <option value="cafe au lait">카페오레</option>
    <option value="espresso">에스프레소</option>
</select>

<option> 태그 :
<option> 태그는 옵션 메뉴를 제공하는 드롭다운 리스트(drop-down list)에서 사용되는 하나의 옵션을 정의할 때 사용합니다.
button : <button></button>구성된다. : 내부에 <img>를 넣어서 이미지버튼을 만들수 있습니다.
이러한 <option> 요소는 <select> 요소나 <datalist> 요소 내부에만 위치할 수 있습니다.
<option> 요소는 아무런 속성도 명시하지 않은 채 사용할 수 있지만, 서버로 제출되는 값을 명시하는 value 속성은 명시하는 것이 일반적입니다.
만약 옵션의 개수가 많다면, <optgroup> 요소를 사용하여 관련된 옵션들을 좀 더 보기 좋게 서로 묶어 줄 수 있습니다.

<button> 태그는 클릭할 수 있는 버튼을 정의할 때 사용합니다.
<button> 요소 안에는 텍스트나 이미지와 같은 콘텐츠를 삽입할 수 있지만, <input> 요소를 사용한 버튼에는 이와 같은 콘텐츠를 삽입할 수 없습니다.
브라우저별로 <button> 요소에 대해 서로 다른 기본 타입을 사용할 수 있으므로, <button> 요소에는 언제나 type 속성값을 명시하는 것이 좋습니다.
문법
<button type="button" onclick="alert('Hello World!')">클릭해 보세요!</button>

<a> 태그 :
<a> 태그는 하나의 페이지에서 다른 페이지를 연결할 때 사용하는 하이퍼링크(hyperlink)를 정의할 때 사용합니다.
이러한 <a> 태그에서 가장 중요한 속성은 바로 링크(link)의 목적지를 가리키는 href 속성입니다.
따라서 href 속성이 없다면, target, download, rel, rev, hreflang, type, referrerpolicy 속성들도 사용할 수 없습니다.
링크된 페이지는 보통 브라우저의 현재 윈도우에 표시되며, 이것은 target 속성으로 변경할 수 있습니다.
문법
<a href="링크주소">링크이름</a>
링크는 모든 브라우저에서 다음과 같은 기본 스타일을 가지게 됩니다.
- 아직 방문하지 않은 링크(unvisited link) : 밑줄, 파란색(blue)
- 방문했던 링크(visited link) : 밑줄, 보라색(purple)
- 활성화된(현재 마우스가 클릭하고 있는) 링크(active link) : 밑줄, 빨간색(red)

<ul> 태그 :
<ul> 태그는 순서가 없는 HTML 리스트(list)를 정의할 때 사용합니다.
<ul> 요소에 속하는 각 아이템은 <li> 요소를 사용하여 나타내며, 이때 아이템 앞에 추가되는 마커(marker)는 검정색의 작은 원(bullet)이나 사각형 모양으로 표현됩니다.
HTML5에서는 <ul> 요소의 type 속성을 더 이상 지원하지 않으므로, 대신 CSS의 list-style-type 속성을 사용하여 마커의 종류를 변경해야 합니다.

<ol> 태그 :
<ol> 태그는 순서가 있는 HTML 리스트(list)를 정의할 때 사용합니다.
<ol> 요소에 속하는 각 아이템은 <li> 요소를 사용하여 나타내며, 이때 아이템 앞에 추가되는 마커(marker)는 아라비아 숫자나 알파벳으로 표현됩니다.
문법

(marker = 도형)
<ul>
    <li>아메리카노</li>
    <li>카페라떼</li>
    <li>핫초코</li>
</ul>

(marker = 숫자,알파벳)
<ol>
    <li>아메리카노</li>
    <li>카페라떼</li>
    <li>핫초코</li>
</ol>

<li> 태그 :
<li> 태그는 HTML 리스트(list)에 포함되는 아이템(item)을 정의할 때 사용합니다.
<li> 요소는 순서가 있는 리스트(ordered list)를 정의하는 <ol> 요소나 순서가 없는 리스트(unordered list)를 정의하는 <ul> 요소, 
메뉴 리스트(menu list)를 정의하는 <menu> 요소에서 리스트의 각 아이템을 정의합니다.
리스트 아이템을 나타내는 기본 마커(marker)는 순서가 없는 리스트나 메뉴 리스트에서는 검정색의 작은 원(bullet) 모양으로 표현되며, 
순서가 있는 리스트에서는 아라비아 숫자나 알파벳으로 표현됩니다. 이렇게 리스트 아이템을 표현하는 마커(marker)는 CSS를 사용하면 다른 모양으로  손쉽게 변경할 수 있습니다.

<div class="container">
    <form action="/workflow/index" method="post">
<div class="col-md-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Создание файла</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-6">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="badge">14</span>
                            тут будет номер кабины
                        </li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="badge">14</span>
                            тут будет номер тел.
                        </li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
      <span class="input-group-addon"> Prefix</span>
                        <input type="text"  name="C34" class="form-control" aria-label="...">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
        <span class="input-group-addon">
        Number
      </span>
          <input type="number" name="Num" class="form-control" aria-label="...">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">Radius (+10,100,1000,10000....)</span>
                        <input type="number" name="Rad" class="form-control" aria-label="...">
                    </div>
                </div>
            </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">Callerid</span>
                    <input type="number" name="Callerid" class="form-control" aria-label="...">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <div class="checkbox">
                        <label><input  name="rendom" type="checkbox" name="Rendom" value="">Random</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="input-group">
                    <span class="input-group-addon">Укажи номер кабины!</span>
                    <input type="number" name="cab" class="form-control" aria-label="...">
                </div>
            </div>
        </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">DTMF</span>
                        <input type="text" name="C1" class="form-control" aria-label="...">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                            <label><input name="text" type="number" placeholder=",,,"  name="C2">пишем цифрой кол-во секунд</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <button name="call" type="submit" type="button" class="btn btn-default">Call</button>
                        <button id = "End" type="button" class="btn btn-default">Stop cabin</button>
                    </div>
                </div>
            </div>

    </div>
        </div>
</div></form>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <iframe style="width: 100%;height: 100%;" src="/file.php" frameborder="0" allowfullscreen></iframe>
        </div>
    </div>
</div>





<html>
<head>
@include('headdata')
<title>.:: IntElect - Wahl erstellen ::.</title>
</head>
<body>
@include('mainnav')
  <main class="container">
    <div class="row">
        <h4>Neue Wahl erstellen</h4>
        <div class="divider"></div>
        <form class="col s12" method="post" action="{{URL::to('/admin/election/create')}}" onsubmit="return validateform()">
        <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
            <div class="row">
                <div class="col s12 m12 l6">
                    <div class="row">
                        <div class="input-field col s12">
                            <label for="name_id">Name</label>
                            <input type="text" class="validate tovalidate" name="name" required="" id="name_id">
                        </div>
                        <div class="input-field col s12">
                            <label for="description_id">Beschreibung</label>
                            <textarea id="description_id" class="materialize-textarea tovalidate" name="description" placeholder="Beschreibung"></textarea>
                        </div>
                    </div>
                </div>
                <div class="col s12 m12 l6">
                    <div class="row">
                        <div class="input-field col s12">
                <div class="row">
                                <h5><i class="material-icons">access_time</i> Kandidatenanmeldung</h5>
                <div class="row">
                                    <h5 class="col s2">Von</h5> <input type="text" class="datepicker col s3 tovalidate" placeholder="Datum" style="font-size: 20px" name="candidate_registration_begin_date" required> <h5 class="col s2">um</h5> <input type="text" class="timepicker col s3" name="candidate_registration_begin_time" placeholder="Uhrzeit" style="font-size: 20px" required> <!-- <h5 class="col s2 offset-s1">bis </h5> <input type="text" class="datepicker col s3 tovalidate" name="candidate_registration_end_date"> <input type="text" class="timepicker" name="candidate_registration_end_time" style="font-size: 20px"> -->
                </div>
                <div class="row">
                    <h5 class="col s2">bis </h5> <input type="text" class="datepicker col s3 tovalidate" name="candidate_registration_end_date" placeholder="Datum" style="font-size: 20px" required> <h5 class="col s2">um</h5> <input placeholder="Uhrzeit" type="text" class="timepicker col s3" name="candidate_registration_end_time" style="font-size: 20px" required>
                </div>
                            </div>
                <div class="row">
                    <h5><i class="material-icons">access_time</i> Wahlzeit</h5>
                             <!--   <h5 class="col s1">Von</h5> <input type="text" class="datepicker col s5 tovalidate" name="election_begin"> <h5 class="col s1">bis</h5> <input type="text" class="datepicker col s5 tovalidate" name="election_end"> -->
                <div class="row">
                    <h5 class="col s2">Von</h5> <input placeholder="Datum" type="text" class="datepicker col s3 tovalidate" style="font-size: 20px" name="election_begin_date" required> <h5 class="col s2">um</h5> <input placeholder="Uhrzeit" type="text" class="timepicker col s3" name="election_begin_time" style="font-size: 20px" required>
                </div>
                <div class="row">
                    <h5 class="col s2">bis </h5> <input placeholder="Datum" type="text" class="datepicker col s3 tovalidate" name="election_end_date" style="font-size: 20px" required> <h5 class="col s2">um</h5> <input placeholder="Uhrzeit" type="text" class="timepicker col s3" name="election_end_time" style="font-size: 20px" required>
                </div>
                </div>
                        </div>
           <div class="row">
                        <div class="input-field col s12">
                            <h5><i class="material-icons">settings</i> Wahlsystem</h5>
                            <p>
                                <input name="type" class='tovalidate' type="radio" id="type_id1" value="0" required="" />
                                 <label for="type_id1" class='tovalidate' style="color: #000000">Kreuzsystem</label>
                            </p>
                            <p>
                                <input name="type" type="radio" id="type_id2" value="1" />
                                <label for="type_id2" style="color: #000000">Schulsprecherwahl</label>
                            </p>
                            <p>
                                <input name="type" type="radio" id="type_id3" value="2" />
                                <label for="type_id3" style="color: #000000">Abteilungssprecherwahl</label>
                            </p>
                            <p>
                                <input name="type" type="radio" id="type_id4" value="3" />
                                <label for="type_id4" style="color: #000000">Klassensprecherwahl</label>
                            </p>

                        </div>
           </div>
                    </div>
                </div>
            <button class="btn waves-effect waves-light" type="submit" name="action">Erstellen</button>
    </form>
    </div>
</main>
@include('footer')
<script>
$( document ).ready(function() {
   $('.timepicker').pickatime({'twelvehour': false});
   $('.datepicker').pickadate({
    monthsFull: ['Januar', 'Feber', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'],
    weekdaysShort: ['Mon', 'Die', 'Mit', 'Don', 'Fre', 'Sam', 'Son'],
    selectMonths: true,
    selectYears: 15,
    today: 'Today',
    clear: 'Clear',
    close: 'Ok',
    closeOnSelect: false,
    format: 'yyyy-mm-dd'
  });
});
</script>
</body>
</html>

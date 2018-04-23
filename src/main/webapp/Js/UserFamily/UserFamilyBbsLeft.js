 window.onload = function() {
        var aa = document.getElementsByClassName('aa');
        var first = document.getElementById('first');
        var Previous = null;
        var sum=0;
        first.style.color = 'red';
        for(var i=0;i<aa.length;i++){
            var click = aa[i];
            click.onclick = function(){
                if(sum>0){
                    Previous.style.color = '#030802'
                }
                this.style.color = 'red';
                Previous = this;
                sum++;
                if(this.innerHTML==first.innerHTML){
                    this.style.color = 'red';
                }else{
                    first.style.color = '#030802'
                }
            }
        }

    }

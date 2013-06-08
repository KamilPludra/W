class StronyStatyczneController < ApplicationController


  def home

    @res = ''
    @resul = ''
    @result = ''
    @result2 = ''
    @result3 = ''

    @result4 = ''
    @result5 = ''
    @result6 = ''
    @result7 = ''
    @result8 = ''
    @result9 = ''
  end


  def calculate


    ary = Array.new
    uszeregowane = Array.new
    liste = Array.new
    listt = Array.new
    listx = Array.new

    liste2 = Array.new
    listt2 = Array.new
    liste3 = Array.new
    listt3 = Array.new

    koniec = Array.new
    koniec2 = Array.new

    koszty_e = Array.new
    koszty_t = Array.new


    ary = params[:ary][0]

    det = params[:d]
    alf = params[:alfa]
    bet = params[:beta]

    alfa = alf.to_i
    beta = bet.to_i
    d = det.to_i


    i = 0
    i2 = 0
    i3 = 0

    e = 0
    e2 = 0


    t = 0
    t2 = 0
    t3 = 0


    list = ary.split(', ')
    list.each{ |el| uszeregowane.push(Integer(el)) }
    koniec = uszeregowane.sort! { |x,y| y <=> x } .join( "  |  ")


    koniec2 =uszeregowane.sort! { |x,y| y <=> x }


    while i < list.size  do

      if  alfa*liste.size < beta*(1+listt.size)

        liste[e]=i+1
        e +=1

      else
        listt[t]=i+1
        t +=1

      end
        i +=1
    end

    ################### liczebnik

    iii = 0
    m =1

    liczebnik = Array.new

    while  iii < list.size  do

      liczebnik[iii] = m

      m += 1
      iii +=1
    end


    @res = "[ i ]   " + liczebnik.join( "   |   ")

    ################### liczebnik


    @resul = "[ pi ]  " + koniec2.join( "  |  ")

    @result = liste.join( "  |  ")
    @result2 = listt.reverse.join( "  |  ")
    @result3 = liste.join( "  |  ")  + "  |||  " + listt.reverse.join( "  |  ")


  ############################################################   d+koniec2[e2]

    while i2 < list.size  do

      if  alfa*liste2.size < beta*(1+listt2.size)

        liste2[e2]=koniec2[i2]
        e2 +=1

      else
        listt2[t2]=koniec2[i2]
        t2 +=1

      end
      i2 +=1
    end


    # odwrócenie tablicy .reverse


    @result4 = liste2.join( "  |  ")  + "  |||  " + listt2.reverse.join( "  |  ")


    ############################################################  d + koszty_t[i3]

    #######     Lista kosztów

    koszty_e = liste2.reverse

    koszty_t = listt2.reverse


     ee = tt = d

    vv = 1

    hhh = Array.new

    e3 = 0
    ee3 = 1

    while i3 < list.size  do



                if  alfa*liste3.size < beta*(1+listt3.size)

                  ee -= koszty_e[e3]

                  liste3[ee3]= ee

                  e3 +=1
                  ee3 += 1




                else

                  tt += koszty_t[t3]

                  listt3[t3]= tt

                  t3 +=1


                end


                liste3[0] = d





                vv += 1
      i3 +=1
    end





    @result5 = liste3.reverse.join( "  |  ")

    @result6 = listt3.join( "  |  ")



    @result7 = liste3.reverse.join( "  |  ")  + "  |||  " + listt3.join( "  |  ")


   #####     SUMA kosztów

    koszty = Array.new

    koszty = liste3.reverse + listt3


    liste4 = Array.new
    listt4 = Array.new

    i4 = 0
    i5 = 0
    bb = 1

    while i4 < liste3.size  do

        if liste3.reverse[bb] == nil

          #liste3.reverse[bb] = 100

          #liste4[i4]=liste3.reverse[bb] = d * alfa

        else

          liste4[i4]=liste3.reverse[bb] * alfa

        end



        bb += 1




      i4 +=1
    end


    while i5 < listt3.size  do


      listt4[i5]=listt3[i5] * beta


      i5 +=1
    end









    @result8 = liste4.join( "  |  ")  + "  |||  " + listt4.join( "  |  ")

    koszzz = Array.new

    koszzz = liste4 + listt4



    @result9 = koszzz.inject{|sum,x| sum + x }





    render :action => :home
  end












  def pomoc
  end

  def onas
  end

  def kontakt
  end




end

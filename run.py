from main_app.app import app
if __name__ == "__main__":
    app.run(debug=True)



            
        # <h1> all news</h1>
        
        # <table class="table table-hover">
        #   <thead>

        #       {% for a in data %}
        #         {% if  a['body']!="" and a['blog_heading']!="" and a['author_name']!=""	 %}
        #           <tr>
                      
          
                   
                      
        #           </tr>
        #           <div class="card" style="width: 18rem;">
        #             <img class="card-img-top" src="https://source.unsplash.com/900x300/?nature,water" alt="Card image cap">
        #             <div class="card-body">
        #               <h5 class="card-title">Card title</h5>
        #       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        #       <a href= <td><a href="/blog/{{ a['id']}}"> {{ a['blog_heading']}}  </a>
        #     </div>
        #   </div>
        #     </tr>
        #         {% endif %}
               
        #       {% endfor %}

        #    </tbody>
        # </table>
        
        # </body>
        # </html>






        #         <h1>all news</h1>
        
        # <table class="table table-hover">
        #   <thead>
        #     <tr>
        #       <th>blog</th>
        #       <th>Author</th>
        #     </tr>
        #   </thead>
        #   <tbody>
          
        #   {% for a in data %}
        #     {% if  a['body']!="" and a['blog_heading']!="" and a['author_name']!=""	 %}
        #         <tr>
                    
        
        #             <td><a href="/blog/{{ a['id']}}"> {{ a['blog_heading']}}  </a> </td>
                   
        #             <td>{{ a['author_name']}}</td>
                    
        #         </tr>
        #     {% endif %}
               
        #   {% endfor %}
        #    </tbody>
        # </table>
        
        # </body>
        # </html>
import { useEffect, useState } from 'react';

const MovieList = () => {

    const [movies, setMovies] = useState([])
    
    useEffect(async () => {
        const url = "http://localhost:5000/movies";
        const res = await fetch(url);
        setMovies(await res.json());
    }, [])
    
    return(
            <table className="striped">
                <thead>
                <tr>
                    <th>Nome</th>
                    <th>Tipo</th>
                    <th>Episódios</th>
                    <th>Episódio atual</th>
                    <th>Visto por último</th>
                </tr>
                </thead>

                <tbody>
                {movies.map(movie => {
                    let type = movie.Tipo === 0 ? 'Série' : 'Filme';
                    let formatDate = (movie.Ultima_Visualizacao).split('T', 1)

                    return(
                        <tr key={movie.Id}>
                            <td>{movie.Nome}</td>
                            <td>{type}</td>
                            <td>{movie.Ep_Qtd}</td>
                            <td>{movie.Ep_Atual}</td>
                            <td>{formatDate}</td>
                        </tr>
                    )
                })}
                </tbody>
            </table>
    )
}

export default MovieList;

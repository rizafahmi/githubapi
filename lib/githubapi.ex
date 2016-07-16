defmodule GitHub do
  require Logger
  # 'https://api.github.com/rate_limit?client_id=aaeed6ba3b0b3abcd7d4&client_secret=39e86d52bfa6d9780abf7da65e3e6a55b611e97f'
  def zen do
    credentials = Application.get_env(:githubapi, GitHub)
    {:client_id, client_id} = Enum.at(credentials, 0)
    {:client_secret, client_secret} = Enum.at(credentials, 1)

    url = "https://api.github.com/zen?client_id=#{client_id}&client_secret=#{client_secret}"
    response = HTTPoison.get!(url)
    body = response.body
    Logger.info "body: #{inspect body}"
  end

  def list_repos do

  end
end

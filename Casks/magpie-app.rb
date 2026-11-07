cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3219"
  sha256 arm:   "9d77a83db3048458f92d9c22bdeb2728132c62d0626a6a1a1c57acc0a55c4d9f",
         intel: "31b827f9890d2f7ecfa36da23fed2f7c62145d15ca7fca5d514379146d2217d0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

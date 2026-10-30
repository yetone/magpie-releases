cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2236"
  sha256 arm:   "d9747db1ea6ffd7a845d15207327d9682221dbec19dae7e59871cc9ab64c003f",
         intel: "26405213499db26c7ce2e156c7a6f1faa04cdd44908052ab0bc33cc0630d5370"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

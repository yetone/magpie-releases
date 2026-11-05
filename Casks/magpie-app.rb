cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3003"
  sha256 arm:   "d411bc9d7fa909eb423b522cc34b154ff0e51a17d215f8b061a9b40b00b73acf",
         intel: "b803e547b7d94ab8b17120363d17a87b14c2f2f0a7844950f9334f119d9e4eaf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

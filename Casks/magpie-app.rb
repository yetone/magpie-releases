cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3695"
  sha256 arm:   "9c9bffa89197cda64fae26f971e9a849da647755098d895cdaae223364b2a82f",
         intel: "2e10a04a61e88282aa53e8945ead716fd7f36985330335674d46cc3aebcb43a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

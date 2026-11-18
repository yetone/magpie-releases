cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4482"
  sha256 arm:   "0459fee2e1f6bdd0120cbf342c9f9ce68638829ab0031027ba9429a34968cecc",
         intel: "5d338eaaf60531ba900366301f1ca0e24cb02ea3a96212d6086ee193f1988bce"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5019"
  sha256 arm:   "9597e72c0384b61f31ea437cf419e28644cb6bd31827ffb9bf0bdf3a33b372aa",
         intel: "4a5a69cf3635c2e13f5faecbd901a2c0f3b883e2a09be330cdd04b73dd5e1176"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

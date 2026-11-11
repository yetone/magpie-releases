cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3701"
  sha256 arm:   "f904d354c6254a463852740d067eddb43513922616b60c4225361db0840ea870",
         intel: "879246afad99e4f33c294a717521c7950e36cbaeb0ecf24c916655d3f39fc157"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2344"
  sha256 arm:   "1faa7a3c4ee29e60c3827679486a96728809a33cf178717676868d84b0caa9eb",
         intel: "69d40ba79122330f7a7865097eeb152dcdd145aa46b6798415af7bc40dfb91e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

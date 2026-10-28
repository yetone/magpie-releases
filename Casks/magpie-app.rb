cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1883"
  sha256 arm:   "17784f4f21e222ab1a2b6b37a37a9f12b6c4bc2494d8939b19423f74e354e232",
         intel: "d4761d0e6312a03e92c64f3b1a3107a571c818674a97605189ba52de6348b8e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

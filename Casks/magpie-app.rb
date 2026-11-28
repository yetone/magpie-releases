cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4999"
  sha256 arm:   "f21067aa45f8a63f088e30b782c450ce47435867301053ae90a4b3f158f6af81",
         intel: "499e1a67765a26042e398484ad654a4b242761aa8ced377ba7e9cf06f05e2092"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

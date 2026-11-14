cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4208"
  sha256 arm:   "525ab32ac90ff75226fc09da1c0b8b5882b476d8c06d47da69f524eb127af583",
         intel: "d4bf1f5c6d78dfa5dc5650dea047852b755121ac692ea942a6b0415a2c26e366"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

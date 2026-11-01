cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2649"
  sha256 arm:   "5cbbe341c0e0de76e108a1c1d82c6f68cddb4ca8804717be59743296d82031a7",
         intel: "c48dda12649b236f8b0b65c64dd45ed1b13a660537c4db9c8e82c990503ce73b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

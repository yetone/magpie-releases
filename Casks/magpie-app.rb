cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4708"
  sha256 arm:   "e2e8dc7d52a037fae01c45df00276da86265d8f347ed280df575cf5e7335bfbd",
         intel: "aa87419d6792e4be8e5321f6b9c1b42510f4aeab428018d16d8ade99f9928b6b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

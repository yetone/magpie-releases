cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.928"
  sha256 arm:   "604cb5d3a24cae4109a0f3f644e1cade2d3cf0998562c12ecfdb179bfc62c0c9",
         intel: "59bd2df1e7a79ebdd776f31e40005163d11d35fce331d5d4012d41921dd26914"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.911"
  sha256 arm:   "4533a4782ed68e67e66daa23352b2016bb111b0561d62312a9a5c239b7e97314",
         intel: "767a342b3985728ed8b3bac878131fa3faa4aa5315b9fd4060f972522ba32422"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

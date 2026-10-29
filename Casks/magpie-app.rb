cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2096"
  sha256 arm:   "0edaf2e8203c46a3539404d280a22063cccb5d0df89986b80b64b78aec9c0bb3",
         intel: "6669a829ef07e6fdbd160fac7ce4a5ca79e45e5f1d463c6b940b855aac321256"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

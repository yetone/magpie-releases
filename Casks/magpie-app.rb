cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1896"
  sha256 arm:   "222e3e0b0bc9e8b34e1fc0783ae216bdd04696cbc918a51718702c110ae00016",
         intel: "ee9d4f417075f8204afaca96ef1101c4e18f7882ed2601b8e0ac44a40f6d6d1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

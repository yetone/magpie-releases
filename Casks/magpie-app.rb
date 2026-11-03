cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2828"
  sha256 arm:   "6f411211722ee56e84ad952631636222fa4163243c54ba4ee077e4a9df800961",
         intel: "c89080a8d3f304e4d5ca86601b628a5a5288dd6dde9f0b62a3eeb7e8e05a2464"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

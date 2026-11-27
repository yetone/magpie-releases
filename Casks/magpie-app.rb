cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4939"
  sha256 arm:   "c47509af146866f62468a5bbd147419905aa6dc30584cda0182644ef9a7adcdb",
         intel: "f64e5b8d4c536645b84e42fa03ca6eabc1d435f725627c897279e79751eaa3ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

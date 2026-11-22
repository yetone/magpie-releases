cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4666"
  sha256 arm:   "c0029a840bd8afe3df9faab7d101de9b19795d7044381a18dbc1035356f8e7c6",
         intel: "11d6964dcd436f07098337b4c034570868123862994a5800b969d89f1d444174"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

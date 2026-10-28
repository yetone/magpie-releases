cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1856"
  sha256 arm:   "a4bab9b39b4104c569e15a9c5e6735e519e0296a5bdfcd0567fa43cd1e571be9",
         intel: "4a98e9083b41492ef6746a456238b2f861512321540fcdc7410f3ce88c7eb6bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

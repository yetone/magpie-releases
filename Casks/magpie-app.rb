cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3511"
  sha256 arm:   "75260df2b74a510660535ce93a4ba418de1dfcced8c2c31f2a2cdfc713e3a96a",
         intel: "364d0bdf5f6bea68f39b5306151be71cfa98e47e787118937eb4094d790895bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

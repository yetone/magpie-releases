cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.143"
  sha256 arm:   "f5164ccf942c94a60aece0ab457fc94fae60eea9c2c5d752cebec68a0cacb73d",
         intel: "6a13bb00c1b70697fe76835092e41e666fdce59ebfb62877d2741ed6cc3fc2fc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2657"
  sha256 arm:   "aff7548ed61a5098a518cc4821dac5ea03a56d5260f73fa80913076901f0dfe3",
         intel: "f0981caf0815da511be11c15b1f99168b2a1f00333c832ea8075a8bc9385830c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

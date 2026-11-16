cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4281"
  sha256 arm:   "6fa23ef4829a3bf758096a1ed585216fa8c99591ecceb8de82dee221f2697010",
         intel: "f9bfaedf32b99afdb7d2627fc814cfc21a961fc53f27273f7b2c258c07d1a108"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

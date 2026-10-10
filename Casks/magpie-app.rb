cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1163"
  sha256 arm:   "1e4514109b177028ad6080f3b5400c3e0a640f0696815b162e2380ad5b97117a",
         intel: "25ee4ec2c9cc51d8c304553c02bf03b7e923c18bd967a8a01cd95ef475462db5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

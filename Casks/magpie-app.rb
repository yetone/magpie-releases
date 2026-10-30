cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2231"
  sha256 arm:   "8de65e3ce7186143ad026ed1e83a22032f014a1659b6420ae8abd8609b7adf2f",
         intel: "07a552e95fe6b3ab0c87459cc77b857f98a5aa0da1e1c0e7c470e07a4dcd3eaa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

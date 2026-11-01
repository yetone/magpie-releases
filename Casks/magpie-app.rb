cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2642"
  sha256 arm:   "5473acc2dc70824a47b62c6a5c54f4f83b3af3b325fcc2548980542762b9f04b",
         intel: "d9365539b824fb613457933da7a2fdaebefcc7148e285dbbdb59f40af7844507"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2230"
  sha256 arm:   "45d5074a6fe5440b8f13b89faeb66d6fcfa0503f2162da8cd5f362612c755a56",
         intel: "68be0ad8614175cb8ece2d38fc5b1238e0015bd55c3998578c4e5a4453dfb356"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4259"
  sha256 arm:   "a981a827689758aa224e42f36c1c40704ef5380d6b4f0e0ee650bd0a8cc26e05",
         intel: "ff8df35680c4c78d6fe82fbb3276f92be6c4f2d453a3da339735432b14706535"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4938"
  sha256 arm:   "12e947f24177599944d2405ebd1b333f14792afc19fe11f54ff6e9feacac88cc",
         intel: "92c76eb5affdb2a541be58e32b0a4afce54a53cfb188ef36d57a4197cf5c3535"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

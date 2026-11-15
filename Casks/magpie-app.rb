cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4245"
  sha256 arm:   "270ac3f31e4975f0f81113f3c948cdbf5c59215a06db3380b536d976a5b8c65c",
         intel: "3543ca76dce2d9da0555be48b7cd1d8c916af3c1ad0fe7c10443d82d5c19734c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

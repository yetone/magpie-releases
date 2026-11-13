cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4079"
  sha256 arm:   "f309036167e34c2dbacb6744eed373222a0bdcd832ff07d91bab94257d9c782a",
         intel: "824bdeab48129e03e3ca0ae5c7d8a773b73392b4e824e83520ca8305fd4dcc21"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

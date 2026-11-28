cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5022"
  sha256 arm:   "e0f7066131b6f73c593baa7aa878e25f691be881227683251ea8a69edcf5143f",
         intel: "4e81ecc34801922bc355385c1bbf80e00a7b36ae3535f57ff95af0e8c3a30069"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

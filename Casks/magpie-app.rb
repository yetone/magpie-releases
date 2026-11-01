cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2586"
  sha256 arm:   "51e0bb58bf6b39c3f083d23aca778d907669b7ffa565b4aa9299b34aef9e9d5a",
         intel: "0b7009c98b68e77b6c4bb39a76adc31e1f499b89f69161eb9f662acfe6f0f8f1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

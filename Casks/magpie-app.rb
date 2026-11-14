cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4210"
  sha256 arm:   "0ae1c5f83fd474b75df410e744cfa21098560b8c34f192690b5b081855d90ea2",
         intel: "a8f1052bbf53f4261d43d1a42073c054d3c19cb2ab79cf1f55674804533278ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

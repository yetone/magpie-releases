cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2128"
  sha256 arm:   "57875a3a8f05730697f149f6c43ee205a17ad39c07c595181fbe64b8fe89fd1e",
         intel: "5f4b615688fca5c5c5ed408365abdc4fd545e54775c654fa45d7458d3b30c45e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

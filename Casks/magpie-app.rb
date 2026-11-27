cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4963"
  sha256 arm:   "92a0a96580878b4f64bf94cf45abab7efbf9be1a3892b6fb457b9da1b7c43b85",
         intel: "f6092bfe2d4f44989730a7a166a84df81e7773b181d5a0d0074ad9da312489a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

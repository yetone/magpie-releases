cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4420"
  sha256 arm:   "5bfd1db169cfe77859032798e7f64badf33960e4138c983a086b317bc7b5d463",
         intel: "8568251e07d2514ab5e7f4946824ebff479eb44ec2cde52917438d510fdf722f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

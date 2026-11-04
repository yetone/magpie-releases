cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2985"
  sha256 arm:   "282378ed26f8727225d2fe11928303566d9db432b5fbda97e988dec495a06a2f",
         intel: "20979bb1524735f28b53b0c5f5119c77ed086fb492bc4b79425d9029c6c47622"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

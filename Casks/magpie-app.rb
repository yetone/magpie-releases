cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5024"
  sha256 arm:   "302de7fa23f32e0b71dad75e5afe303789176069a5b88dc06e8c45055198211a",
         intel: "616308d1ff7f686339fa9112056d9ccacf263d1f9d04be48a89605d8ad9fddf8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4609"
  sha256 arm:   "214bc52cc847452b4f9c2c7399199f9d9e4509d1f5b3865cf3ec4e0f86f03752",
         intel: "842f849ea8a63aded4593d128e34946c042d671f06c7b7f32451748f4531ba66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

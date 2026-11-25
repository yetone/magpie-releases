cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4793"
  sha256 arm:   "b78a2c014f464493acb4911772b8519a2e38b443de0b0c6a625b2b94d306e8eb",
         intel: "a74deeb0c4015bdce42fb0a5b631728573616b780590c72cd18dbfad979e8205"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4843"
  sha256 arm:   "b2e1cf2dad38630bd8e602de1526cfe77435c2e5f03ac3b4697259d58d6b522b",
         intel: "ed58c1793dfbad62ecbfe6d45cd8d85a13777eaf407cea7e09a00753161f8610"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
